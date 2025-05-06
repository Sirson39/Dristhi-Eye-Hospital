package com.dhristi.util;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.security.spec.KeySpec;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Utility class for encrypting, decrypting, and verifying passwords using AES/GCM.
 * Passwords are encrypted with a key derived from the username via PBKDF2WithHmacSHA256.
 */
public class PasswordUtil {
    private static final String ENCRYPT_ALGO    = "AES/GCM/NoPadding";
    private static final int    TAG_LENGTH_BIT   = 128;
    private static final int    IV_LENGTH_BYTE   = 12;
    private static final int    SALT_LENGTH_BYTE = 16;
    private static final Charset UTF_8           = StandardCharsets.UTF_8;
    private static final Logger  LOG              = Logger.getLogger(PasswordUtil.class.getName());

    /**
     * Generates a secure random nonce of the given size.
     */
    private static byte[] getRandomNonce(int numBytes) {
        byte[] nonce = new byte[numBytes];
        new SecureRandom().nextBytes(nonce);
        return nonce;
    }

    /**
     * Derives a 256-bit AES key from the given password and salt using PBKDF2.
     */
    private static SecretKey getAESKeyFromPassword(char[] password, byte[] salt) {
        try {
            SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
            KeySpec spec = new PBEKeySpec(password, salt, 65536, 256);
            byte[] keyBytes = factory.generateSecret(spec).getEncoded();
            return new SecretKeySpec(keyBytes, "AES");
        } catch (Exception ex) {
            LOG.log(Level.SEVERE, "Error deriving AES key from password", ex);
            return null;
        }
    }

    /**
     * Encrypts the given plaintext password, using the username to derive the key.
     * Returns a Base64-encoded string containing IV + salt + ciphertext.
     */
    public static String encrypt(String username, String password) {
        try {
            byte[] salt = getRandomNonce(SALT_LENGTH_BYTE);
            byte[] iv   = getRandomNonce(IV_LENGTH_BYTE);
            SecretKey key = getAESKeyFromPassword(username.toCharArray(), salt);
            if (key == null) return null;

            Cipher cipher = Cipher.getInstance(ENCRYPT_ALGO);
            GCMParameterSpec spec = new GCMParameterSpec(TAG_LENGTH_BIT, iv);
            cipher.init(Cipher.ENCRYPT_MODE, key, spec);

            byte[] cipherText = cipher.doFinal(password.getBytes(UTF_8));

            ByteBuffer buffer = ByteBuffer.allocate(iv.length + salt.length + cipherText.length);
            buffer.put(iv).put(salt).put(cipherText);

            return Base64.getEncoder().encodeToString(buffer.array());
        } catch (Exception ex) {
            LOG.log(Level.SEVERE, "Encryption error", ex);
            return null;
        }
    }

    /**
     * Decrypts the Base64-encoded string produced by encrypt().
     * Returns the plaintext password or null on error.
     */
    public static String decrypt(String encrypted, String username) {
        try {
            byte[] decoded = Base64.getDecoder().decode(encrypted);
            ByteBuffer buffer = ByteBuffer.wrap(decoded);

            byte[] iv = new byte[IV_LENGTH_BYTE];    buffer.get(iv);
            byte[] salt = new byte[SALT_LENGTH_BYTE]; buffer.get(salt);
            byte[] cipherText = new byte[buffer.remaining()]; buffer.get(cipherText);

            SecretKey key = getAESKeyFromPassword(username.toCharArray(), salt);
            if (key == null) return null;

            Cipher cipher = Cipher.getInstance(ENCRYPT_ALGO);
            cipher.init(Cipher.DECRYPT_MODE, key, new GCMParameterSpec(TAG_LENGTH_BIT, iv));

            byte[] plainText = cipher.doFinal(cipherText);
            return new String(plainText, UTF_8);
        } catch (Exception ex) {
            LOG.log(Level.SEVERE, "Decryption error", ex);
            return null;
        }
    }

    /**
     * Verifies a plaintext password against the encrypted value.
     * @return true if the passwords match, false otherwise
     */
    public static boolean verifyPassword(String rawPassword, String encrypted, String username) {
        String decrypted = decrypt(encrypted, username);
        return decrypted != null && decrypted.equals(rawPassword);
    }
}
