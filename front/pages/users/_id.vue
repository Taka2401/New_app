<template>
  <h1>Hello, {{ users }}</h1>
</template>

<script>
export default {
  asyncData({ $axios, params }) {
    return $axios.get(`http://localhost:3000/users/${params.id}`)
      .then((res) => {
        return { users: res.data }
      })
  }
}
</script>