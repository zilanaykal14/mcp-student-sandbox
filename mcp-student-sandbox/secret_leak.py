import os

AWS_SECRET_KEY = os.getenv("AWS_SECRET_KEY")
def connect():
    if AWS_SECRET_KEY:
        print("Connecting with AWS Secret Key.")
    else:
        print("AWS Secret Key not found. Please set it as an environment variable.")
