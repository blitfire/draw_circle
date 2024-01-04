//
// Created by george on 28/12/23.
//

#ifndef DRAW_CIRCLE_CIRCLE_H
#define DRAW_CIRCLE_CIRCLE_H
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <string_view>
#include "Shader.h"

class Circle {
private:
    glm::vec3 colour;
    GLuint VAO, VBO, EBO;
    GLsizei indexCount;

    static inline const std::string projectPath {"/home/george/CLionProjects/draw_circle/"};
    const Shader shader {(projectPath + "shaders/circle-vertex.glsl").c_str(),
                         (projectPath + "shaders/circle-fragment.glsl").c_str()};


public:
    Circle(float radius, const float *centre, const float *pColour);
    void draw();

    ~Circle();
};


#endif //DRAW_CIRCLE_CIRCLE_H
