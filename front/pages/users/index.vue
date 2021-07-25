<template>
  <h1>Hello, {{ users }}</h1>
</template>

<script>
export default {
  asyncData({ $axios }) {
    return $axios.get(`users`)
      .then((res) => {
        return { users: res.data }
      })
  }
}
</script>