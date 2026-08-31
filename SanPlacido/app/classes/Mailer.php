<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

/**
 * Clase Mailer: Gestiona el envío de correos electrónicos
 * Encapsula la configuración de PHPMailer
 */
class Mailer {
    
    private $mail;
    
    public function __construct() {
        $this->mail = new PHPMailer(true);
        $this->configurarSMTP();
    }
    
    /**
     * Configurar los parámetros SMTP
     */
    private function configurarSMTP() {
        $this->mail->isSMTP();
        $this->mail->Host = 'smtp-relay.brevo.com';
        $this->mail->SMTPAuth = true;
        $this->mail->Username = '9ad073001@smtp-brevo.com';
        $this->mail->Password = 'HUFyKk2PfMt4g7D1';
        $this->mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $this->mail->Port = 587;
        $this->mail->CharSet = 'UTF-8';
        
        // Remitente por defecto
        $this->mail->setFrom('sanplacidoprueba@gmail.com', 'San Plácido');
    }
    
    /**
     * Enviar código de verificación
     * 
     * @param string $destinatario Email del destinatario
     * @param string $codigo Código de verificación
     * @return array ['success' => bool, 'error' => string|null]
     */
    public function enviarCodigoVerificacion($destinatario, $codigo) {
        try {
            $this->mail->clearAddresses();
            $this->mail->addAddress($destinatario);
            
            $this->mail->isHTML(true);
            $this->mail->Subject = 'Código de verificación - San Plácido';
            $this->mail->Body = "
                <div style='font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;'>
                    <h2 style='color: #333;'>Verificación de correo</h2>
                    <p>Hola,</p>
                    <p>Tu código de verificación es:</p>
                    <div style='background: #f4f4f4; padding: 20px; text-align: center; margin: 20px 0;'>
                        <h1 style='color: #007bff; font-size: 32px; margin: 0;'>$codigo</h1>
                    </div>
                    <p>Este código expira en 15 minutos.</p>
                    <p>Si no solicitaste este código, podés ignorar este mensaje.</p>
                    <hr style='margin: 30px 0;'>
                    <p style='color: #666; font-size: 12px;'>San Plácido - Sistema de Registro</p>
                </div>
            ";
            
            $this->mail->send();
            
            return [
                'success' => true,
                'error' => null
            ];
            
        } catch (Exception $e) {
            return [
                'success' => false,
                'error' => $this->mail->ErrorInfo
            ];
        }
    }
    
    /**
     * Generar código de verificación de 6 dígitos
     * 
     * @return string Código de 6 dígitos
     */
    public static function generarCodigoVerificacion() {
        return str_pad(random_int(0, 999999), 6, '0', STR_PAD_LEFT);
    }
}