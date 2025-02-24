import java.util.Scanner;

public class Main {

    // Caesar Cipher Encryption
    public static String caesarEncrypt(String text, int shift) {
        StringBuilder encrypted = new StringBuilder();
        for (char c : text.toCharArray()) {
            if (Character.isLetter(c)) {
                char base = Character.isLowerCase(c) ? 'a' : 'A';
                encrypted.append((char) ((c - base + shift) % 26 + base));
            } else {
                encrypted.append(c); // Non-alphabetic characters remain unchanged
            }
        }
        return encrypted.toString();
    }

    // Caesar Cipher Decryption
    public static String caesarDecrypt(String text, int shift) {
        return caesarEncrypt(text, 26 - shift); // Decrypt by shifting back
    }

    // Vigenère Cipher Encryption
    public static String vigenereEncrypt(String text, String key) {
        StringBuilder encrypted = new StringBuilder();
        int keyLength = key.length();
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (Character.isLetter(c)) {
                char base = Character.isLowerCase(c) ? 'a' : 'A';
                char keyChar = key.charAt(i % keyLength);
                int shift = Character.toLowerCase(keyChar) - 'a';
                encrypted.append((char) ((c - base + shift) % 26 + base));
            } else {
                encrypted.append(c); // Non-alphabetic characters remain unchanged
            }
        }
        return encrypted.toString();
    }

    // Vigenère Cipher Decryption
    public static String vigenereDecrypt(String text, String key) {
        StringBuilder decrypted = new StringBuilder();
        int keyLength = key.length();
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (Character.isLetter(c)) {
                char base = Character.isLowerCase(c) ? 'a' : 'A';
                char keyChar = key.charAt(i % keyLength);
                int shift = Character.toLowerCase(keyChar) - 'a';
                decrypted.append((char) ((c - base - shift + 26) % 26 + base));
            } else {
                decrypted.append(c); // Non-alphabetic characters remain unchanged
            }
        }
        return decrypted.toString();
    }

    // Main Method: User Interface
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Welcome to the Cryptography App!");
        System.out.println("Choose an option:");
        System.out.println("1. Caesar Cipher");
        System.out.println("2. Vigenère Cipher");
        System.out.print("Enter your choice (1 or 2): ");
        int choice = scanner.nextInt();
        scanner.nextLine(); // Consume newline

        if (choice == 1) {
            // Caesar Cipher
            System.out.print("Enter the text to process: ");
            String text = scanner.nextLine();
            System.out.print("Enter the shift value (key): ");
            int shift = scanner.nextInt();
            scanner.nextLine(); // Consume newline

            System.out.println("Choose operation:");
            System.out.println("1. Encrypt");
            System.out.println("2. Decrypt");
            System.out.print("Enter your choice (1 or 2): ");
            int operation = scanner.nextInt();

            if (operation == 1) {
                String encryptedText = caesarEncrypt(text, shift);
                System.out.println("Encrypted Text: " + encryptedText);
            } else if (operation == 2) {
                String decryptedText = caesarDecrypt(text, shift);
                System.out.println("Decrypted Text: " + decryptedText);
            } else {
                System.out.println("Invalid operation choice.");
            }
        } else if (choice == 2) {
            // Vigenère Cipher
            System.out.print("Enter the text to process: ");
            String text = scanner.nextLine();
            System.out.print("Enter the key: ");
            String key = scanner.nextLine();

            System.out.println("Choose operation:");
            System.out.println("1. Encrypt");
            System.out.println("2. Decrypt");
            System.out.print("Enter your choice (1 or 2): ");
            int operation = scanner.nextInt();

            if (operation == 1) {
                String encryptedText = vigenereEncrypt(text, key);
                System.out.println("Encrypted Text: " + encryptedText);
            } else if (operation == 2) {
                String decryptedText = vigenereDecrypt(text, key);
                System.out.println("Decrypted Text: " + decryptedText);
            } else {
                System.out.println("Invalid operation choice.");
            }
        } else {
            System.out.println("Invalid cipher choice.");
        }

        scanner.close();
    }
}