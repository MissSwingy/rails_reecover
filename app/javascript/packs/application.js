import "bootstrap";
import { collapseSlideBar } from '../components/slidebar_collapse';
if (document.getElementById('sidebarCollapse')) {
  collapseSlideBar();
}
import { hideFirstQuestion } from '../components/hide_first_question';
hideFirstQuestion();

import { toggleSidebar } from '../components/sidebar_toggle';
toggleSidebar();

import { carousel } from '../components/carousel';
carousel();

import { scrollMoove } from '../components/scroll_move';
if (document.getElementById('test-riasec')) {
  scrollMoove();
}

import { reloadPage } from '../components/randomize_career';
if (document.getElementById('randomize-career')) {
  reloadPage();
}

import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
if (document.getElementById('map')) {
  initMapbox();
}

