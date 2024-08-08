<script lang="ts">
  import Grid from 'gridjs-svelte';
  import "public/mermaid.min.css";

  interface Data {
    id: number;
    name: string;
    email: string;
    age: number;
  }

  const data: Data[] = [
    { id: 1, name: 'John Doe', email: 'john@example.com', age: 30 },
    { id: 2, name: 'Jane Smith', email: 'jane@example.com', age: 25 },
    { id: 3, name: 'Bob Johnson', email: 'bob@example.com', age: 35 },
    { id: 4, name: 'Alice Williams', email: 'alice@example.com', age: 28 },
    { id: 5, name: 'Tom Davis', email: 'tom@example.com', age: 32 },
  ];

  const columns = [
    {
      name: 'ID',
      data: (row: Data) => row.id,
      filter: { type: 'number' },
      sort: true,
      width: '10%',
    },
    {
      name: 'Name',
      data: (row: Data) => row.name,
      filter: { type: 'text' },
      sort: true,
      width: '25%',
    },
    {
      name: 'Email',
      data: (row: Data) => row.email,
      filter: { type: 'text' },
      sort: true,
      width: '30%',
    },
    {
      name: 'Age',
      data: (row: Data) => row.age,
      filter: { type: 'number' },
      sort: true,
      width: '15%',
    },
  ];
</script>

<Grid
  {data}
  {columns}
  pagination={{
    enabled: true,
    limit: 10,
  }}
  search={true}
  sort={true}
  resizable={true}
/>
