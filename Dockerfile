# Use a lightweight base image with Python installed
FROM public.ecr.aws/lambda/python:3.9

# Copy function code and requirements
COPY example_lambda2.py .
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Set the CMD to your handler (replace with your actual handler name)
CMD ["example_lambda2.lambda_handler"]