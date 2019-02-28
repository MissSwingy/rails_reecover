import "bootstrap";
import { collapseSlideBar } from '../components/slidebar_collapse';
if (document.getElementById('sidebarCollapse')) {
  collapseSlideBar();
}
import { hideFirstQuestion } from '../components/hide_first_question';
hideFirstQuestion();
