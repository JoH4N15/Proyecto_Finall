<template>
  <div id="app" >
    <div class="custom-navbar">
      <b-navbar toggleable="lg"  >
        <img src="https://i.ibb.co/pj6Dg7x/logo1.png"   class="d-inline-block align-top" alt="Kitten" height="55">
        

        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

        <b-collapse id="nav-collapse" is-nav>
          <b-navbar-nav>
            <b-nav-item href="#" class="custom-nav-item1">INICIO</b-nav-item>
            <b-nav-item href="#" class="custom-nav-item2">ACERCA DE</b-nav-item>
            <b-nav-item href="#" class="custom-nav-item2">DESTINO</b-nav-item>
            <b-nav-item href="#" class="custom-nav-item2">TOUR</b-nav-item>

            <b-nav-item href="#" class="custom-nav-item3">Iniciar Sesion</b-nav-item>
            <b-nav-item href="#" class="custom-nav-item4">Registrarse</b-nav-item>
          </b-navbar-nav>

        
          
        </b-collapse>
      </b-navbar>
      <div>
  
    </div>
    <b-media right-align vertical-align="center" class="banner">
    <template #aside>
      <b-img src="https://i.ibb.co/wdH0Vzn/publicidad1.png" width="350" class="img" ></b-img>
    </template>
    <h1 class="mt-0 mb-1">Encuentra tu proximo destino <br>con los mejores descuentos</h1>
    <p class="parrafo">
      Aprovecha las tarifas reducidas que tenemos para ti, ofertas de paquetes emocionantes y beneficios adicionales<br> al reservar sus vuelos con nosotros. No hay mejor momento para explorar nuevos destinos, reunirse con seres <br> queridos  o embarcarse en aventuras inolvidables.
    </p>
    <b-button variant="outline-success" class="boton">Conoce más</b-button>
  </b-media>

  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <div>
    <b-card-group>
  <b-card v-for="registro in registros" :key="registro.id" class="card" :img-src="registro.link" img-alt="Image" img-top>
    <b-card-text>
      <p>Conoce la ciudad de {{ registro.ciudad }}  {{ registro.pais }}.</p>
      <p>Con un precio de: ${{ registro.precio }}</p>
    </b-card-text>
    <template #footer>
      <small class="text-muted">Last updated 3 mins ago</small>
    </template>
  </b-card>
</b-card-group>

</div>
<br>
<footer class="footer mt-auto py-3 bg-light">
      <div class="container text-center">
        <span class="text-muted">© 2023 Skypulse.com</span>
      </div>
    </footer>
</div>

    <router-view />
  </div>
  
</template>

<style scoped>
.custom-navbar {
  padding: 1rem;
  margin-left: 150px; 
  margin-right: 150px;
  background-color: #fefcfc; 
}

.custom-nav-item1{
  margin-left: 330px;
 

}
.custom-nav-item2{
  margin-left: 20px;
  
  color: #52bf1700; 
}

.custom-nav-item3{
  margin-left: 330px;
  border-radius: 5%;
  color: #d51010;
  background-color: #3498db;
}

.custom-nav-item4{
  margin-left: 17px;
  border-radius: 5%;
  
  
  color: #d51010;
  background-color: #3498db;
}

.banner{
margin-top: 250px;
margin-left: 50px;
}

.img{
  margin-top: -360px;
  margin-left: 910px;
  border-radius: 3%;
}

.parrafo{
  margin-top: 60px;
}

.boton{
  margin-top: 45px;
}

.card{
  border-radius: 50px;
  border-color: #fbfafa;
  display: flex;
  margin: 20px;
}



</style>


<script>
import axios from 'axios';

export default {
  name: 'App',
  data() {
    return {
      registros: [],
    };
  },
  mounted() {
    axios.get('http://localhost:3000/registros')
      .then(response => {
        this.registros = response.data;
      })
      .catch(error => {
        console.error('Error al obtener registros:', error);
      });
  },
};
</script>