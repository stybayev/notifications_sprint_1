import logging
import os
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

import aiosmtplib
from jinja2 import Environment, FileSystemLoader, select_autoescape

# Настройка Jinja2
env = Environment(
    loader=FileSystemLoader('app/templates'),
    autoescape=select_autoescape(['html', 'xml'])
)

# Настройки SMTP
SMTP_HOST = os.getenv("SMTP_HOST", "smtp.gmail.com")
SMTP_PORT = int(os.getenv("SMTP_PORT", 587))
SMTP_USER = os.getenv("SMTP_USER", "example@gmail.com")
SMTP_PASSWORD = os.getenv("SMTP_PASSWORD", "123")
FROM_EMAIL = os.getenv("FROM_EMAIL", "example@gmail.com")

smtp = None

logger = logging.getLogger(__name__)

async def init_smtp():
    global smtp
    smtp = aiosmtplib.SMTP(
        hostname=SMTP_HOST,
        port=SMTP_PORT,
        use_tls=True,  # True для Implicit TLS
        start_tls=False  # Не вызываем starttls()
    )
    try:
        await smtp.connect()
        # Не вызываем starttls()
        await smtp.login(SMTP_USER, SMTP_PASSWORD)
        logger.info("SMTP пул инициализирован.")
    except Exception as e:
        logger.error(f"Ошибка инициализации SMTP пула: {e}")


async def close_smtp():
    if smtp:
        await smtp.quit()


async def send_email(to_email: str, subject: str, template_name: str, context: dict):
    """
    Асинхронная функция для отправки email с использованием пула соединений.

    :param to_email: Email получателя
    :param subject: Тема письма
    :param template_name: Имя HTML шаблона
    :param context: Контекст для шаблона
    """
    # Рендеринг шаблона
    template = env.get_template(template_name)
    html_content = template.render(context)

    # Создание MIME сообщения
    message = MIMEMultipart('alternative')
    message['From'] = FROM_EMAIL
    message['To'] = to_email
    message['Subject'] = subject

    part = MIMEText(html_content, 'html')
    message.attach(part)

    # Отправка письма
    try:
        await smtp.send_message(message)
        print(f"Письмо успешно отправлено на {to_email}")
    except Exception as e:
        print(f"Ошибка при отправке письма на {to_email}: {e}")
