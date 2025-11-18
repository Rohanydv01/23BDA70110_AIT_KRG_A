import React, { useState } from "react";

export default function App() {
  const messageFromApp = "Hello from App Component!";
  const [message] = useState(messageFromApp);

  return (
    <div className="p-6 max-w-md mx-auto">
      <h1 className="text-2xl font-bold mb-4">App Component</h1>
      {/* Parent and Child are nested here to avoid name collisions across files */}
      <Parent msg={message} />
    </div>
  );
}

function Parent({ msg }) {
  return (
    <div className="p-4 rounded-2xl border mb-4">
      <h2 className="text-xl font-semibold mb-2">Parent Component</h2>
      <Child message={msg} />
    </div>
  );
}

// Child is also local and simply receives the prop and displays it.
function Child({ message }) {
  return (
    <div className="p-4 rounded-2xl border">
      <h3 className="text-lg font-semibold mb-2">Child Component</h3>
      <p className="text-gray-700">Message from App: {message}</p>
    </div>
  );
}
