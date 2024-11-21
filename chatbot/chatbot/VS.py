import requests

url = "https://api.vectorshift.ai/api/chatbots/run"

headers = {
    "Api-Key": "sk_CKaNFnBjF7ufr9E2JdiGLTcSnzI3ttoYhprvcytTTNEgd3mi",
}

body = {
    "input": "bài báo",
    "chatbot_name": "bot_AM",
    "username": "slathh",
    "conversation_id": None
}

response = requests.post(url, headers=headers, json=body)
output = response.json().get('output')

print(output)
# print(response)
