<template>
  <nav class="navbar is-info" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-item" href="/">ToDo Application</a>
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
            <a class="navbar-item" href="#">Top</a>
            <a class="navbar-item" href="#">About</a>
            <a class="navbar-item" href="#">Content</a>
          </div>
        </div>
      </div>
    </div>
  </nav>
</template>
