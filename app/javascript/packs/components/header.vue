<template>
  <nav class="navbar is-info" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <router-link to="/" class="navbar-item">ToDo Application</router-link>
      <a role="button" class="navbar-burger is-active" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
      <div class="navbar-start"></div>
      <div class="navbar-end">
        <div class="navbar-item has-dropdown is-hoverable">
          <a class="navbar-link">
            Menu
          </a>
          <div class="navbar-dropdown">
            <router-link to="/" class="navbar-item">Top</router-link>
            <router-link to="/about" class="navbar-item">About</router-link>
            <router-link to="/contact" class="navbar-item">Content</router-link>
          </div>
        </div>
      </div>
    </div>
  </nav>
</template>
