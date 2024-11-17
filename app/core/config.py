from pydantic import BaseSettings

class Settings(BaseSettings):
    TELEGRAM_TOKEN: str
    API_URL: str = "https://domo-dev.profintel.ru/tg-bot"
    API_TOKEN: str

    class Config:
        env_file = ".env"

settings = Settings() 