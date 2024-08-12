<template>
  <div class="home">
    <h1>Home</h1>
    <p>You must be authenticated to see this</p>
  </div>
  <MovieList/>
  
</template>

<script>
import MovieList from '../components/MovieList.vue';
export default {
  components:{
    MovieList
  }
};
</script>
