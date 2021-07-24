<template>
  <h1>Hello, {{ users }}</h1>
</template>

<script>
export default {
  asyncData({ $axios }) {
    return $axios.get(`http://localhost:3000/users`)
      .then((res) => {
        return { users: res.data }
      })
  }
}
</script>