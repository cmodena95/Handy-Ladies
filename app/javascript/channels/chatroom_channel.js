import consumer from "./consumer";

const initChatCable = () => {
  const messagesContainer = document.getElementById('messages');
  const newMessage = document.getElementById('message_content');

  if (messagesContainer) {
    const id = messagesContainer.dataset.userId;
    const currentUserId = document.body.dataset.currentUser

    consumer.subscriptions.create({ channel: "ChatChannel", id, currentUserId }, {
      received(data) {
        const dummyDiv = document.createElement('div')
        dummyDiv.innerHTML = data

        const messageContainer = dummyDiv.querySelector('.message-container')
        const isSender = currentUserId === messageContainer.dataset.sender

        data = data.replace('message-container sender', `message-container ${isSender ? 'sender' : 'receiver'}`)

        newMessage.value = ''
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initChatCable };
