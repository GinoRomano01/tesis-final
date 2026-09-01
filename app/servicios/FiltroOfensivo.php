<?php
/**
 * Filtro local de palabras ofensivas (regex + lista negra).
 * Primera línea de defensa antes de Groq. Detecta variaciones comunes
 * (sin acentos, con números reemplazando letras, con espacios).
 */
class FiltroOfensivo {

    // Lista base — se expande dinámicamente con variaciones
    private static $lista = [
        // Lunfardo argentino
        'boludo', 'boluda', 'pelotudo', 'pelotuda', 'forro', 'forra',
        'garca', 'gil', 'gila', 'pajero', 'pajera', 'sorete',
        'mogolico', 'mogólico', 'tarado', 'tarada', 'choto', 'chota',
        'pendejo', 'pendeja', 'chanta', 'trolo', 'trola',
        'la concha', 'concha de', 'hijo de puta', 'hija de puta', 'hdp',
        'la puta madre', 'reputa', 'put0',

        // Español general
        'mierda', 'mierdas', 'idiota', 'idiotas', 'estupido', 'estúpido',
        'estupida', 'estúpida', 'imbecil', 'imbécil', 'imbeciles',
        'basura', 'asqueroso', 'asquerosa', 'porqueria', 'porquería',
        'joder', 'jodete', 'carajo', 'cagada', 'cagado',

        // Acusaciones a la marca
        'chorros', 'chorro', 'estafadores', 'estafador', 'ladrones', 'ladron',
        'ladrón', 'rateros',

        // Discriminación / amenazas (mantener lista corta y conservadora)
        'puto', 'puta', 'putos', 'putas', 'maricon', 'maricón',
    ];

    /**
     * @return array ['ofensivo'=>bool, 'palabras'=>array<string>]
     */
    public static function analizar(string $texto): array {
        $normalizado = self::normalizar($texto);
        $encontradas = [];

        foreach (self::$lista as $palabra) {
            $patron = self::construirPatron($palabra);
            if (preg_match($patron, $normalizado)) {
                $encontradas[] = $palabra;
            }
        }

        return [
            'ofensivo' => !empty($encontradas),
            'palabras' => array_unique($encontradas),
        ];
    }

    /**
     * Normaliza el texto: minúsculas, sin acentos, reemplaza dígitos comunes
     * usados para esquivar filtros (4→a, 3→e, 1→i, 0→o, $→s, @→a).
     */
    private static function normalizar(string $texto): string {
        $texto = mb_strtolower($texto, 'UTF-8');

        $acentos = [
            'á'=>'a','é'=>'e','í'=>'i','ó'=>'o','ú'=>'u',
            'à'=>'a','è'=>'e','ì'=>'i','ò'=>'o','ù'=>'u',
            'ä'=>'a','ë'=>'e','ï'=>'i','ö'=>'o','ü'=>'u',
            'ñ'=>'n',
        ];
        $texto = strtr($texto, $acentos);

        $leet = ['4'=>'a','3'=>'e','1'=>'i','0'=>'o','$'=>'s','@'=>'a','5'=>'s','7'=>'t'];
        $texto = strtr($texto, $leet);

        // Asteriscos y símbolos comunes para censurar → letra estándar
        $texto = preg_replace('/[\*\.\-_]/', '', $texto);

        return $texto;
    }

    /**
     * Construye un regex que tolera espacios o repetición de letras
     * entre caracteres (b o l u d o, booludo, etc.).
     */
    private static function construirPatron(string $palabra): string {
        $palabra = self::normalizar($palabra);
        $partes  = [];
        $len     = mb_strlen($palabra);
        for ($i = 0; $i < $len; $i++) {
            $c = mb_substr($palabra, $i, 1);
            $partes[] = preg_quote($c, '/') . '+';
        }
        $cuerpo = implode('\s*', $partes);
        return '/\b' . $cuerpo . '\b/iu';
    }
}