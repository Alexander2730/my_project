import psycopg2-binary
import os

def main():
    connection = psycopg2.connect(
        dbname=os.getenv("POSTGRES_DB"),
        user=os.getenv("POSTGRES_USER"),
        password=os.getenv("POSTGRES_PASSWORD"),
        host="db"
    )
    cursor = connection.cursor()
    
    # Выполнение запроса для получения минимального и максимального возраста
    cursor.execute("""
        SELECT MIN(age), MAX(age) FROM test_table
        WHERE CHAR_LENGTH(name) < 6;
    """)
    result = cursor.fetchone()

    print("Минимальный возраст:", result[0])
    print("Максимальный возраст:", result[1])

    cursor.close()
    connection.close()

if __name__ == "__main__":
    main()

if __name__ == '__main__':
    main()
