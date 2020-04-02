Any stored credentials/tokens in encrypted files use the password for the service as the decryption password.

To decrypt:

openssl aes256 -d -in <file> -out <file>
