from datetime import datetime

from celery import shared_task


@shared_task
def display_time():
    print("The time is %s :" % str(datetime.now()))
    return true
