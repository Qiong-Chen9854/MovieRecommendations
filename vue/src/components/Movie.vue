<template>
   <div class="sigleMovie">
    <img src="../../movieDemoPicture.jpg" alt="movieDemoPicture">
    <h3><RouterLink v-bind:to="{name:'movie-details', params:{movieId:movie.movieId}}">{{ movie.movieName }}</RouterLink></h3>
    <h4>{{ movie.category }}</h4>
  </div>
  
</template>
<script>
export default{
  props:['movie'],
}

</script>

<style>
img{
  width: 250px;
  border-radius: 3px;
}

h3{
  width: 250px;
  height: 30px;
  /* text-align: left; */

}
h4{
  width: 250px;
  height: 30px;
  margin-top:3px;
  font-weight:lighter;
  /* text-align: left; */
}

.sigleMovie{
  /* flex: 1 1 20%;
  justify-content: center;
  align-items: center;
  text-align: left;
  flex-direction: column;
  align-items: center; */
  flex: 0 1 calc(20% - 12px); /* Each movie item takes up 20% of the row */
  box-sizing: border-box;
  padding: 10px;
  display: flex;
  flex-direction: column;
  align-items: center; /* Centers items horizontally */ 

  border: 3px solid #03346E;
  border-radius: 3%;

  /* border: 2px solid #333; /* Adds a 2px solid border with a dark gray color */
  /* border-radius: 5px; Optional: adds rounded corners  */
}
</style>