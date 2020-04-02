Any stored credentials/tokens in encrypted files use the password for the service as the decryption password.

Example, to decrypt:

openssl aes256 -d -in filename.enc -out filename.txt

Then enter the decryption password when prompted.

