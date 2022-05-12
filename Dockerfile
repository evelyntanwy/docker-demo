FROM ghostinspector/test-runner-node

# Copy your source code
COPY . .

# Install your app
RUN npm install .

# Configure the test runner
ENV APP_PORT 3000
ENV GI_API_KEY <ghostinspector-api-key>
ENV GI_SUITE <ghostinspector-suite-id>
ENV GI_PARAM_myVar some-custom-value
ENV NGROK_TOKEN <your-ngrok-token>

# Pass your application entrypoint into our test runner script
CMD ["index.js"]