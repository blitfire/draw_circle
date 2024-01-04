//
// Created by george on 28/12/23.
//

#include "Circle.h"
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <vector>
#include <cmath>

Circle::Circle(float radius, const float *centre, const float *pColour) : colour {pColour[0], pColour[1], pColour[2]} {

    float sectorAngle {};
    if (radius != 0.0f) sectorAngle = 0.08726646f / radius;

    std::vector<float> vertices;
    std::vector<unsigned int> indices;

    vertices.push_back(centre[0]);
    vertices.push_back(centre[1]);
    vertices.push_back(0.0f);

    float x, y;
    unsigned int maxIndex {1};
    for (float curr_angle {}; curr_angle < M_2_PI; curr_angle += sectorAngle) {
        x = centre[0] + (radius * std::cos(curr_angle));
        y = centre[1] + (radius * std::sin(curr_angle));

        vertices.push_back(x);
        vertices.push_back(y);
        vertices.push_back(0.0f);

        maxIndex++;
    }
    for (int i {}; i < maxIndex; i++) {
        indices.push_back(0);
        indices.push_back(i);
        indices.push_back((i+1) % maxIndex);
        indexCount += 3;
    }
    
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(float), vertices.data(), GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(float), indices.data(), GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);

    // unbind
    glBindVertexArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}

void Circle::draw() {
    // Set the colour
    shader.use();
    shader.setVec3("inColour", colour);
    // Draw the circle
    glBindVertexArray(VAO);
    glDrawElements(GL_TRIANGLES, indexCount, GL_UNSIGNED_INT, nullptr);
    // Unbind
    glBindVertexArray(0);
}

Circle::~Circle() {
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);
    glDeleteBuffers(1, &EBO);
}
