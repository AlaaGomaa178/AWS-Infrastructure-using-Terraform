data "archive_file" "lambda" {
  type        = "zip"
  source_file = "lambda-python-code.py"
  output_path = "lambda_function_payload.zip"
}

resource "aws_lambda_function" "send_email_lambda" {
  filename         = "lambda_function_payload.zip"  
  function_name    = "send-Email"
  role             = aws_iam_role.lambda_role.arn
  handler          = "lambda_function.handler" 
  runtime          = "python3.10"

  environment {
    variables = {
      SES_SENDER_EMAIL    = var.ses_email_sender
      SES_RECIPIENT_EMAIL = var.ses_email_receiver
    }
  }
}