<template>
  <Movie v-for="i in 5" v-bind:key="i" />
</template>
<script>
import Movie from './Movie.vue';

export default{
  components:{
    Movie,
  }
}
</script>