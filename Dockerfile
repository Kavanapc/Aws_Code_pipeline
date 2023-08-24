#base image
FROM python:3.11

#set working directory inside container
WORKDIR /app

#Copy the requirement.txt file
COPY requirements.txt .

#install project dependencies
RUN pip install -r requirements.txt

#copy application code into container
COPY . .

#Expose port where flask application running on
EXPOSE 5000

#Run flask application
CMD ["python", "app.py"]
