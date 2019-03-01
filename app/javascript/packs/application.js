import "bootstrap";
import { collapseSlideBar } from '../components/slidebar_collapse';
if (document.getElementById('sidebarCollapse')) {
  collapseSlideBar();
}
import { hideFirstQuestion } from '../components/hide_first_question';
hideFirstQuestion();

import { toggleSidebar } from '../components/sidebar_toggle';
toggleSidebar();

import { reloadPage } from '../components/randomize_career';
if (document.getElementById('randomize-career')) {
  reloadPage();
}
