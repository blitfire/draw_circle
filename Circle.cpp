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

Circle::Circle(const float *centre, float radius, const float *pColour) : colour {pColour[0], pColour[1], pColour[2]} {
    std::vector<float> vertices;
    std::vector<unsigned int> indices;

    vertices.push_back(centre[0]);
    vertices.push_back(centre[1]);
    vertices.push_back(0.0f);

    unsigned int sectorCount {};
    if (radius != 0.0f) sectorCount = static_cast<unsigned int>(radius) * 72; // This will mean that a circle of radius 1.0 will have 72 sectors
    float sectorAngle {(2 * M_PIf) / static_cast<float>(sectorCount)};

    float x, y;
    unsigned int maxIndex {1};
    float currentAngle {};
    for (int i {}; i < sectorCount; i++) {
        currentAngle = static_cast<float>(i) * sectorAngle;
        x = centre[0] + (radius * std::cos(currentAngle));
        y = centre[1] + (radius * std::sin(currentAngle));

        vertices.push_back(x);
        vertices.push_back(y);
        vertices.push_back(0.0f);

        maxIndex++;
    }
    for (int i {1}; i < maxIndex - 1; i++) {
        indices.push_back(0);
        indices.push_back(i);
        indices.push_back(i+1);
        indexCount += 3;
    }
    indices.push_back(0);
    indices.push_back(1);
    indices.push_back(maxIndex - 1);
    indexCount += 3;

    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, static_cast<GLsizei>(vertices.size() * sizeof(float)), vertices.data(), GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, static_cast<GLsizei>(indices.size() * sizeof(float)), indices.data(), GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), nullptr);
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
