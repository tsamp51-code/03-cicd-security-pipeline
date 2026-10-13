# Security scan test
import subprocess
import sqlite3

# BAD: Hardcoded secret - secret scanner should catch this
API_KEY = "AKIAIOSFODNN7EXAMPLEKEY123456"
DB_PASSWORD = "supersecretpassword123"

def get_user(username):
    conn = sqlite3.connect("users.db")
    cursor = conn.cursor()
    # BAD: SQL injection vulnerability - SAST should catch this
    query = f"SELECT * FROM users WHERE username = '{username}'"
    cursor.execute(query)
    return cursor.fetchall()

def run_command(user_input):
    # BAD: Command injection - SAST should catch this
    subprocess.run(user_input, shell=True)

def safe_function():
    # GOOD: This is fine
    print("Hello, secure world")
