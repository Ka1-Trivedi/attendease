from flask_bcrypt import Bcrypt

bcrypt = Bcrypt()
print(bcrypt.check_password_hash("$2b$12$LRkjZX2MHil5J9aOk6eChu50EuY/Tz5GaN40UYcrBqSFf9W.qG4ju","123"))