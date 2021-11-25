<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
  margin: 0;
  padding: 0;
  background-color: #3d4e56fa;
  display: flex;
}

button {
  width: 70px;
  height: 70px;
  border: none;
  border-radius: 8px;
  margin: 12px;
  cursor: move;
  font-size: 30px;
  background: #eaeaea4f;
}

.container {
  margin: 10px;
  padding: 10px;
  background-color: #b5c1dc57;
  border-radius: 8px;
}

.draggable.dragging {
  opacity: 0.5;
}
</style>
</head>
<body>
  <body>
  <div class="container">
    <button class="draggable" draggable="true">🦊</button>
    <button class="draggable" draggable="true">🐸</button>
  </div>
  <div class="container">
    <button class="draggable" draggable="true">🐶</button>
    <button class="draggable" draggable="true">🐱</button>
  </div>

<script>
/**
 * http://usejsdoc.org/
 */
 const draggables = document.querySelectorAll(".draggable");
 const containers = document.querySelectorAll(".container");

 draggables.forEach(draggable => {
   draggable.addEventListener("dragstart", () => {
     draggable.classList.add("dragging");
   });

   draggable.addEventListener("dragend", () => {
     draggable.classList.remove("dragging");
   });
 });

 containers.forEach(container => {
   container.addEventListener("dragover", e => {
     e.preventDefault();
     const draggable = document.querySelector(".dragging");
     container.appendChild(draggable);
   });
 });
 
 function getDragAfterElement(container, x) {
	  const draggableElements = [
	    ...container.querySelectorAll(".draggable:not(.dragging)"),
	  ];

	  return draggableElements.reduce(
	    (closest, child) => {
	      const box = child.getBoundingClientRect();
	      const offset = x - box.left - box.width / 2;
	      // console.log(offset);
	      if (offset < 0 && offset > closest.offset) {
	        return { offset: offset, element: child };
	      } else {
	        return closest;
	      }
	    },
	    { offset: Number.NEGATIVE_INFINITY },
	  ).element;
	}
 
 containers.forEach(container => {
	  container.addEventListener("dragover", e => {
	    e.preventDefault();
	    const afterElement = getDragAfterElement(container, e.clientX);
	    console.log(afterElement)
	    const draggable = document.querySelector(".dragging");
	    container.appendChild(draggable);
	  });
	});
 
 containers.forEach(container => {
	  container.addEventListener("dragover", e => {
	    e.preventDefault();
	    const afterElement = getDragAfterElement(container, e.clientX);
	    const draggable = document.querySelector(".dragging");
	    if (afterElement === undefined) {
	      container.appendChild(draggable);
	    } else {
	      container.insertBefore(draggable, afterElement);
	    }
	  });
	});
</script>
</html>