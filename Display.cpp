//
// Created by george on 31/12/23.
//

#include "Display.h"
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>

Display::Display(int pWidth, int pHeight) : width{pWidth}, height{pHeight} {
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 6);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    window = glfwCreateWindow(width, height, "Circle", nullptr, nullptr);
    if (window == nullptr) {
        std::cout << "Failed to create GLFW window." << std::endl;
        glfwTerminate();
        exit(-1);
    }
    glfwMakeContextCurrent(window);

    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
        std::cout << "Failed to initialise GLAD" << std::endl;
        exit(-1);
    }
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
}

void Display::checkInput() {
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
}

Display::~Display() {
    glfwTerminate();
}

void Display::fill(const float *colour) {
    glClearColor(colour[0], colour[1], colour[2], 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
}

void Display::update() {
    glfwSwapBuffers(window);
    glfwPollEvents();
}

void framebuffer_size_callback(GLFWwindow* window, int width, int height) {
    glViewport(0, 0, width, height);
}