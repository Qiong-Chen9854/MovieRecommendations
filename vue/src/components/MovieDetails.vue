<template>
  <div>
    <img src="../../movieDemoPicture.jpg" alt="movieDemoPicture">
    <h3>{{ currentMovie.movieName }}</h3>
    <h4>{{ currentMovie.category }}</h4>
    <h4>{{ currentMovie.publishDate }}</h4>
    <h4>{{ currentMovie.director }}</h4>
    <h4>{{ currentMovie.description }}</h4>
  </div>
</template>
<script>
export default {
  data() {
    return {
      // currentMovie: {},
    }
  },

  computed: {
    currentMovie() {
      return this.$store.state.singleMovie;
    }
  },


  mounted() {
    const currentMovieId = this.$route.params.movieId;
    this.$store.dispatch('getSingleMove', currentMovieId);
    // this.currentMovie = this.$store.state.singleMovie;
    // console.log(this.currentMovie);
  }
}

</script>