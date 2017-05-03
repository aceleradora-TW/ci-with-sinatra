function toggleClass(element, cls) {
  const appliedClasses = [...element.classList];

  const newClassList = appliedClasses.includes(cls)
    ? appliedClasses.filter(appliedClass => appliedClass !== cls)
    : [...appliedClasses, cls];

  element.classList = newClassList.join(' ');
}

function addClassOnce(element, cls) {
  if (![...element.classList].includes(cls)) {
    element.classList = [...element.classList, cls].join(' ');
  }
}

function removeClass(element, cls) {
  element.classList =
    [...element.classList].filter( aClass => aClass !== cls).join(' ');
}

const finishMessage = () => document.querySelector('h2');
const all = () => document.querySelectorAll('.todo-item');
const completed = () => document.querySelectorAll('.todo-item.completed');
const list = () => document.querySelector('.todo-items');

all().forEach(todoItem =>
  todoItem.addEventListener('click',
    () => toggleClass(todoItem, 'completed')
  )
);

list().addEventListener('click', () => {

  console.log(`${all().length} : ${completed().length}`);

  all().length === completed().length
    ? addClassOnce(finishMessage(), 'visible')
    : removeClass(finishMessage(), 'visible');

});
