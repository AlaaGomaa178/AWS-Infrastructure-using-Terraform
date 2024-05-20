import boto3
import datetime
import os

ses_client = boto3.client('ses')

def lambda_handler(event, context):
    region = event['region']

    current_time = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    subject = "Terraform deployment email"
    body = f"there is a new terraform deployment:, region: {region}, at: {current_time}"
    sender = os.environ['SES_SENDER_EMAIL']
    recipient = os.environ['SES_RECIPIENT_EMAIL']

    response = ses_client.send_email(
        Source=sender,
        Destination={'ToAddresses': [recipient]},
        Message={'Subject': {'Data': subject}, 'Body': {'Text': {'Data': body}}}
    )

    return {
        'statusCode': 200,
        'body': response
    }