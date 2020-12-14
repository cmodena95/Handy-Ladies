import consumer from "./consumer";

const initChatCable = () => {
  const messagesContainer = document.getElementById('messages');
  const newMessage = document.getElementById('message_content');

  if (messagesContainer) {
    const id = messagesContainer.dataset.userId;
    const currentUserId = messagesContainer.dataset.currentUserId

    consumer.subscriptions.create({ channel: "ChatChannel", id, currentUserId }, {
      received(data) {
        newMessage.value = ''
        messagesContainer.insertAdjacentHTML('beforeend', data);
      },
    });
  }
}

export { initChatCable };
