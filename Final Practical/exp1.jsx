import { useState } from "react";

export default function EmployeeFilter() {
  const employees = [
    "Rohan",
    "Rita",
    "Rahul",
    "Monu",
    "Mansi",
    "Tina",
    "Tarun",
    "Tejas",
    "Teena"
  ];

  const [query, setQuery] = useState("");

  const filtered = employees.filter((name) =>
    name.toLowerCase().startsWith(query.toLowerCase())
  );

  return (
    <div className="p-6 max-w-md mx-auto space-y-4">
      <h1 className="text-2xl font-bold">Employee List Filter</h1>

      <input
        type="text"
        className="w-full p-2 rounded-xl border"
        placeholder="Type to filter (e.g., 'te')"
        value={query}
        onChange={(e) => setQuery(e.target.value)}
      />

      <ul className="space-y-2 bg-white p-4 rounded-2xl shadow">
        {filtered.length > 0 ? (
          filtered.map((name, idx) => (
            <li key={idx} className="p-2 rounded-xl border">{name}</li>
          ))
        ) : (
          <p className="text-gray-500">No matching employees</p>
        )}
      </ul>
    </div>
  );
}
