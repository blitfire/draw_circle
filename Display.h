//
// Created by george on 31/12/23.
//

#ifndef DRAW_CIRCLE_DISPLAY_H
#define DRAW_CIRCLE_DISPLAY_H
#include <glad/glad.h>
#include <GLFW/glfw3.h>

class Display {
private:
    int width, height;
    GLFWwindow* window;

    void checkInput();
public:
    Display(int pWidth, int pHeight);
    [[nodiscard]] bool isOpen() const { return !glfwWindowShouldClose(window); }
    static void fill(const float *colour);
    void update();

    ~Display();
};

void framebuffer_size_callback(GLFWwindow* window, int width, int height);
#endif //DRAW_CIRCLE_DISPLAY_H
