<template>
  <main class="panel">
    <!--新規作成部分-->
    <p class="panel-heading">ToDoリスト</p>
    <div class="panel-block">
      <input class="input" placeholder="Add Your Task!">
      <a class="button is-success is-outlined is-rounded">
        <i class="fas fa-plus"></i>
      </a>
    </div>
    <!--ToDoリスト部分-->
    <div class="panel-block">
      <p id="row_task_1">
        <label for="task_1" class="checkbox">
          <input type="checkbox" id="task_1">
          Task1
        </label>
      </p>
    </div>
    <div class="panel-block">
      <p id="row_task_2">
        <label for="task_2" class="checkbox">
          <input type="checkbox" id="task_2">
          Task1
        </label>
      </p>
    </div>
    <div class="panel-block">
      <p id="row_task_3">
        <label for="task_3" class="checkbox">
          <input type="checkbox" id="task_3">
          Task1
        </label>
      </p>
    </div>
    <!--達成済みTodo表示ボタン-->
    <div class="panel-block">
      <a class="button is-info is-outlined is-rounded is-fullwidth">Display finished tasks</a>
    </div>
    <!--達成済みToDo-->
    <div id="finished-tasks">
      <p id="row_task_4" class="panel-block">
        <span id="task_4" class="icon">
          <i class="fas fa-check has-text-info"></i>
        </span>
        <label v-bind:for="task_4">Task4</label>
      </p>
      <p id="row_task_5" class="panel-block">
        <span id="task_5" class="icon">
          <i class="fas fa-check has-text-info"></i>
        </span>
        <label v-bind:for="task_5">Task5</label>
      </p>
    </div>
  </main>
</template>