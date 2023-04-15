cmake_minimum_required(VERSION 3.13 FATAL_ERROR)

if(NOT TARGET score_lib_base)
  include(ScoreExternalAddon)
endif()

include(ScoreAvndHelper)

project(score_addon_behaviors LANGUAGES CXX)

avnd_score_plugin_init(
  BASE_TARGET score_addon_behaviors
)

avnd_score_plugin_add(
  BASE_TARGET score_addon_behaviors
  SOURCES
    behaviors/behaviors.hpp
    behaviors/behaviorsModel.hpp
    behaviors/behaviorsModel.cpp
    behaviors/behaviorsUi.hpp
  TARGET my_gain
  MAIN_CLASS behaviors
  NAMESPACE Example
)

avnd_score_plugin_finalize(
  BASE_TARGET score_addon_behaviors
  PLUGIN_VERSION 1
  PLUGIN_UUID "6F7E8891-ED17-4B72-B94C-735D8B743851"
)
