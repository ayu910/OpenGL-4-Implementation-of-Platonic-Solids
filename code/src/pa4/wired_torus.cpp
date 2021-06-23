#include <bits/stdc++.h>

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include <glm/gtx/transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <vector>

#define X 0.52573111211913606
#define Z 0.85065080835203992

//using namespace std;

int createObject(double r, double c, int rSeg, int cSeg);
void framebuffer_size_callback(GLFWwindow * window, int width, int height);

void processInput(GLFWwindow * window);

void subdivide(const glm::vec3 & v1, const glm::vec3 & v2, const glm::vec3 & v3, unsigned long depth);


std::vector<float> cross(float* v1, float* v2);
std::vector<float> normal(std::vector<float> v1, std::vector<float> v2, std::vector<float> v3);

int depth = 2, count = 0;
int rx = 1, ry = 2, rz = 1;
float vertices[10000];
float normals[10000];

float tx=1.0, ty=0.0, tz=-4.0;
float sx=1.0, sy=1.0, sz=1.0;
float rotx=1.0, roty=0.0, rotz=1.0;
char choice = 'n';

int main(int argc, char*argv[])
{
    // 1. OpenGL content by GLFW

    int count = 0;

    printf("Do you want to enter customized values for translate, scale, rotate (y/n) ?");
    std::cin >> choice;
    if(choice == 'y')
    {
    	//printf("Enter depth (0, 1, or 2) : ");
	//std::cin >> depth;
	printf("Do you want to translate? (y/n)");
	std::cin >> choice;
	if(choice == 'y')
	{
		printf("Enter tx : "); std::cin >> tx;
		printf("Enter ty : "); std::cin >> ty;
		printf("Enter tz : "); std::cin >> tz;
	}
	printf("Do you want to rotate? (y/n)");
	std::cin >> choice;
	if(choice == 'y')
	{
		printf("Enter rotx : "); std::cin >> rotx;
		printf("Enter roty : "); std::cin >> roty;
		printf("Enter rotz : "); std::cin >> rotz;
	}
	printf("Do you want to scale? (y/n)");
	std::cin >> choice;
	if(choice == 'y')
	{
		printf("Enter sx : "); std::cin >> sx;
		printf("Enter sy : "); std::cin >> sy;
		printf("Enter sz : "); std::cin >> sz;
	}
    }

    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow * window = glfwCreateWindow(800, 600, "OpenGLDemo", nullptr, nullptr);

    if (!window)
    {
        std::cout << std::unitbuf
                  << "[ERROR] " << __FILE__ << ':' << __LINE__ << ' ' << __PRETTY_FUNCTION__
                  << "\n[ERROR] " << "Failed to create GLFW window!"
                  << std::nounitbuf << std::endl;
        glfwTerminate();
        std::abort();
    }

    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    // 2. load OpenGL functions by GLAD

    if (!gladLoadGLLoader(reinterpret_cast<GLADloadproc>(glfwGetProcAddress)))
    {
        std::cout << std::unitbuf
                  << "[ERROR] " << __FILE__ << ':' << __LINE__ << ' ' << __PRETTY_FUNCTION__
                  << "\n[ERROR] " << "Failed to initialize GLAD!"
                  << std::nounitbuf << std::endl;

        std::abort();
    }

    // 3. compile & link shader programs

    // vertex shader
    const char * vertexShaderSource = "#version 330 core\n"
                                      "layout (location = 0) in vec3 aPos;\n"
                                      "layout (location = 1) in vec3 aNorm;\n"
				      "out vec3 FragPos;\n"
				      "out vec3 Normal;\n"
				      "uniform mat4 model;\n"
				      "uniform mat4 mvp;\n"
                                      "void main()\n"
                                      "{\n"
				      "	FragPos = vec3(model * vec4(aPos, 1.0));\n"
				      "	Normal = mat3(transpose(inverse(model))) * aNorm;\n"
                                      " gl_Position = mvp * vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
                                      "}\0";

    unsigned int vertexShader;
    vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexShaderSource, nullptr);
    glCompileShader(vertexShader);

    int success;
    char infoLog[512];
    glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);

    if (!success)
    {
        glGetShaderInfoLog(vertexShader, 512, nullptr, infoLog);

        std::cout << std::unitbuf
                  << "[ERROR] " << __FILE__ << ':' << __LINE__ << ' ' << __PRETTY_FUNCTION__
                  << "\n[ERROR] " << "Vertex shader compilation failed!"
                  << "\n[ERROR] " << infoLog
                  << std::nounitbuf << std::endl;

        std::abort();
    }

    // fragment shader
    const char * fragmentShaderSource = "#version 330 core\n"
                                        "out vec4 FragColor;\n"
                                        "void main()\n"
                                        "{\n"
                                        "    FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);\n"
                                        "}\0";


/*
    const char * fragmentShaderSource = "#version 330 core\n"
"in vec3 Normal;\n"
"in vec3 FragPos;\n"
"out vec4 FragColor;\n"
"void main()\n"
"{\n"
"    float ambientStrength = 0.1;\n"
"    vec3 lightPos = vec3(0.0f, 0.0f, 0.0f);\n"
"    vec3 lightColor = vec3(1.0f, 1.0f, 1.0f);\n"
"    vec3 viewPos = vec3(0.0f, 0.0f, 10.f);\n"
"    vec3 objectColor = vec3(1.0f, 0.5f, 0.2f);\n"
"    vec3 ambient = ambientStrength * lightColor;\n"
"    vec3 norm = normalize(Normal);\n"
"    vec3 lightDir = normalize(lightPos - FragPos);\n"
"    float diff = max(dot(norm, lightDir), 0.0);\n"
"    vec3 diffuse = diff * lightColor;\n"
"    float specularStrength = 0.5;\n"
"    vec3 viewDir = normalize(viewPos - FragPos);\n"
"    vec3 reflectDir = reflect(-lightDir, norm);\n"
"    float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32);\n"
"    vec3 specular = specularStrength * spec * lightColor;\n"
"    vec3 result = (ambient + diffuse + specular) * objectColor;\n"
"    FragColor = vec4(result, 1.0);\n"
"}\0";
*/
    unsigned int fragmentShader;
    fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentShaderSource, nullptr);
    glCompileShader(fragmentShader);
    glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);

    if (!success)
    {
        glGetShaderInfoLog(vertexShader, 512, nullptr, infoLog);

        std::cout << std::unitbuf
                  << "[ERROR] " << __FILE__ << ':' << __LINE__ << ' ' << __PRETTY_FUNCTION__
                  << "\n[ERROR] " << "Fragment shader compilation failed!"
                  << "\n[ERROR] " << infoLog
                  << std::nounitbuf << std::endl;

        std::abort();
    }

    // attach compiled shaders to shader program object and link them
    unsigned int shaderProgram;
    shaderProgram = glCreateProgram();
    glAttachShader(shaderProgram, vertexShader);
    glAttachShader(shaderProgram, fragmentShader);
    glLinkProgram(shaderProgram);
    glGetProgramiv(shaderProgram, GL_LINK_STATUS, &success);

    if (!success)
    {
        glGetProgramInfoLog(shaderProgram, 512, nullptr, infoLog);

        std::cout << std::unitbuf
                  << "[ERROR] " << __FILE__ << ':' << __LINE__ << ' ' << __PRETTY_FUNCTION__
                  << "\n[ERROR] " << "Shader program linking failed!"
                  << "\n[ERROR] " << infoLog
                  << std::nounitbuf << std::endl;

        std::abort();
    }

    // Shaders are already attached to shaderProgram object.
    // Shaders themselves are now useless and should be deallocated.
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);

    // 4. Vertex coordinate in Normalized Device Coordinate (NDC).
    /*float vertices[] = {
            0.5f, 0.5f, 0.5f,    // top right
            0.5f, -0.5f, 0.5f,   // bottom right
            -0.5f, -0.5f, 0.5f,  // bottom left
            -0.5f, 0.5f, 0.5f,    // top left
            
	    0.5f, 0.5f, -0.5f,    // top right
            0.5f, -0.5f, -0.5f,   // bottom right
            -0.5f, -0.5f, -0.5f,  // bottom left
            -0.5f, 0.5f, -0.5f    // top left
	   //0.5f, -0.5f, 0.0f,		//tetrahedron bottom centre
	   //0.0, 0.5f, 0.0, //tetrahedron centre
	   //0.0, -1.0f, 0.0 //tetrahedron centre
    };

    unsigned int indices[] = {   // note that we start from 0!
       	    0, 1, 2, 3, 0, 4, 5, 6, 7, 4, 5, 1, 2, 6, 7, 3 // cube
	    //3, 0, 2, 3, 2, 1, 3, 1, 0, 0, 1, 2// tetrahedron
	    //0, 1, 3, 2, 0, 4, 2, 3, 4, 1, 5, 0, 5, 2, 5, 3//octahedron
	     0, 1, 3,             // first triangle
            1, 2, 3,              // second triangle
	    1, 5, 6,
	    6, 2, 1,
	    7, 6, 5,
	    5, 4, 7,
	    4, 0, 3, 
	    3, 7, 4,
	    4, 5, 1,
	    1, 0, 4,
	    3, 2, 6,
	    6, 7, 3
    };*/

	/*float vertexdata[] = {
		-X,  0.0,  Z,
		 X,  0.0,  Z,
		-X,  0.0, -Z,
		 X,  0.0, -Z,

		 0.0,  Z,  X,
		 0.0,  Z, -X,
		 0.0, -Z,  X,
		 0.0, -Z, -X,

		  Z,  X, 0.0,
		 -Z,  X, 0.0,
		  Z, -X, 0.0,
		 -Z, -X, 0.0,
	};

	unsigned int indices[] = {
		0, 4, 1,
		0, 9, 4,
		9, 5, 4,
		4, 5, 8, 
		4, 8, 1,
		8, 10, 1,
		8, 3, 10,
		5, 3, 8,
		5, 2, 3,
		2, 7, 3,
		7, 10, 3,
		7, 6, 10,
		7, 11, 6,
		11, 0, 6,
		0, 1, 6,
		6, 1, 10,
		9, 0, 11,
		9, 11, 2,
		9, 2, 5,
		7, 2, 11
	};


	for(int i =0; i< 20; i++)
	{
		glm::vec3 v1, v2, v3;
		for(int j = 0; j < 3; j++)
		{
			int loc1 = indices[i*3];
			int loc2 = indices[i*3+1];
			int loc3 = indices[i*3+2];
			v1 = glm::vec3(vertexdata[loc1*3], vertexdata[loc1*3+1], vertexdata[loc1*3+2]); 
			v2 = glm::vec3(vertexdata[loc2*3], vertexdata[loc2*3+1], vertexdata[loc2*3+2]); 
			v3 = glm::vec3(vertexdata[loc3*3], vertexdata[loc3*3+1], vertexdata[loc3*3+2]); 
		}
		subdivide(v1, v2, v3, depth);
	
	}*/

	//for(int i = 0; i < 80; i++)
	//	std::cout << i << " : " << vertices[i] << std::endl;


    // 5.
    // Send vertex data to vertex shader
    // by creating memory (vertex buffer objects, VBO) on GPU where we store these vertex data.
    // VBOs store float arrays storing vertex coordinates
    // and how it should be interpreted into vec3 in GLSL (i.e. indexes, strides, offsets, etc.)

    // VBOs are stored and organized by vertex array object (VAO).
    // A VAO organizes MULTIPLE VBOs.
    // Once binded to OpenGL context by glBindVertexArray(), this AVO is active and will record
    // calls to functions specifying how VBO should be interpreted and their destinations in vertex shader:
    // glVertexAttribPointer(), glEnableVertexAttribArray() / glDisableVertexAttribArray()

    // A VAO may also has ONE element buffer object (EBO)
    // which is used together with glDrawElements(), where EBO determines which vertices form which triangle.
    // An active VAO stores the glBindBuffer() calls when the target is GL_ELEMENT_ARRAY_BUFFER.
    // This also means it stores its unbind calls.
    // So make sure you DON'T unbind the element array buffer before unbinding your VAO,
    // otherwise it doesn’t have an EBO configured.

    // VAO initialization code
    // Done once (unless your object frequently changes)
    // Bind VAO first, then bind and set vertex buffer(s), and then configure vertex attributes(s).

	
    int n_vertices = createObject(0.2, 0.5, 50, 20);
    unsigned int VAO;
    glGenVertexArrays(1, &VAO);
    glBindVertexArray(VAO);

    GLuint vertexVBO;
    glGenBuffers(1, &vertexVBO);
    glBindBuffer(GL_ARRAY_BUFFER, vertexVBO);
    glBufferData(GL_ARRAY_BUFFER,  sizeof(vertices), vertices, GL_STATIC_DRAW);

    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(glm::vec3), reinterpret_cast<void *>(0));

    GLuint normalVBO;
    glGenBuffers(1, &normalVBO);
    glBindBuffer(GL_ARRAY_BUFFER, normalVBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(normals), normals, GL_STATIC_DRAW);

    glEnableVertexAttribArray(1);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(glm::vec3), reinterpret_cast<void *>(0));

    glEnable(GL_DEPTH_TEST);





    // VBO
    //unsigned int VBO;
    //glGenBuffers(1, &VBO);

    // Bind this buffer to OpenGL context GL_ARRAY_BUFFER.
    // Recall that OpenGL is a state machine, which means from now on,
    // any buffer call we make (on the GL_ARRAY_BUFFER target)
    // will be used to configure the currently bound buffer, which is VBO.
    //glBindBuffer(GL_ARRAY_BUFFER, VBO);

    // call glBufferData() function that copies the previously defined vertex data into the buffer’s memory
    //glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    // tell opengl how to interpret current VBO into "layout (location = 0) in vec3 aPos"
    // current VBO is specified by global context GL_ARRAY_BUFFER
    //glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), reinterpret_cast<void *>(0));
    //glEnableVertexAttribArray(0);

    //unsigned int EBO;
    //glGenBuffers(1, &EBO);
    //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    //glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    // Note that this is allowed.
    // The call to glVertexAttribPointer registered VBO
    // as the vertex attribute's bound vertex buffer object so afterwards we can safely unbind
    glBindBuffer(GL_ARRAY_BUFFER, 0);

    // Unbind the VAO afterwards so other VAO calls won't accidentally modify this VAO, but this rarely happens.
    // Modifying other VAOs requires a call to glBindVertexArray anyways
    // so we generally don't unbind VAOs (nor VBOs) when it's not directly necessary.
    glBindVertexArray(0);

    // WARNING
    // A VAO stores the glBindBuffer calls when the target is GL_ELEMENT_ARRAY_BUFFER.
    // This also means it stores its unbind calls.
    // So make sure you DON'T unbind the element array buffer before unbinding your VAO,
    // otherwise it doesn’t have an EBO configured.
    //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);


    // 6. render loop

    // viewport
    // NDC coordinates will then be transformed to screen-space coordinates via the
    // viewport transform using the data you provided with glViewport()
    glViewport(0, 0, 800, 600);

    // draw in wireframe polygons or filled polygons
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    //glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
    glEnable(GL_DEPTH_TEST);


    glm::mat4 model = glm::translate(glm::mat4(1.0f), glm::vec3(tx, ty, tz));
    glm::mat4 view = glm::lookAt(glm::vec3(0.0, 2.0, 0.0), glm::vec3(0.0, 0.0, -4.0), glm::vec3(0.0, 1.0, 0.0));
    glm::mat4 projection = glm::perspective(45.0f, 1.0f * 800/600, 0.1f, 10.0f);

    model = glm::scale(model, glm::vec3(sx, sy, sz));

    	glm::mat4 mvp = projection*view*model;

    glm::vec3 lightPos = glm::vec3(1.0f, 0.0f, 0.0f);
    glm::vec3 lightColor = glm::vec3(0.5f, 0.5f, 1.0f);
    glm::vec3 viewPos = glm::vec3(0.0f, 0.0f, 0.0f);
    glm::vec3 objectColor = glm::vec3(1.0f, 0.0f, 0.2f);

    //glUseProgram(shaderProgram);

    while (!glfwWindowShouldClose(window))
    {
        // process input
        processInput(window);

        // rendering code here

        // background
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        // triangle
        glUseProgram(shaderProgram);

     	//model = glm::translate(model, glm::vec3(1.0f, -1.0f, 0.0f));

	model = glm::rotate(model, (float)glfwGetTime(), glm::normalize(glm::vec3(rotx, roty, rotz)));

	GLuint uniform_mvp = glGetUniformLocation(shaderProgram, "mvp");
	GLuint uniform_lightPos = glGetUniformLocation(shaderProgram, "lightPos");
	GLuint uniform_viewPos = glGetUniformLocation(shaderProgram, "viewPos");
	GLuint uniform_lightColor = glGetUniformLocation(shaderProgram, "lightColor");
	GLuint uniform_objColor = glGetUniformLocation(shaderProgram, "objectColor");
	GLuint uniform_model = glGetUniformLocation(shaderProgram, "model");
	glUniformMatrix4fv(uniform_mvp, 1, GL_FALSE, glm::value_ptr(mvp));
	glUniformMatrix4fv(uniform_lightPos, 1, GL_FALSE, glm::value_ptr(lightPos));
	glUniformMatrix4fv(uniform_viewPos, 1, GL_FALSE, glm::value_ptr(viewPos));
	glUniformMatrix4fv(uniform_lightColor, 1, GL_FALSE, glm::value_ptr(lightColor));
	glUniformMatrix4fv(uniform_objColor, 1, GL_FALSE, glm::value_ptr(objectColor));
	glUniformMatrix4fv(uniform_model, 1, GL_FALSE, glm::value_ptr(model));
        glBindVertexArray(VAO);
	int size;
	//glGetBufferParameteriv(GL_ELEMENT_ARRAY_BUFFER, GL_ARRAY_SIZE, &size);
        //glDrawElements(GL_LINE_STRIP, 16, GL_UNSIGNED_INT, nullptr);
        //glDrawElements(GL_LINE_STRIP, 12, GL_UNSIGNED_INT, nullptr);
        //glDrawElements(GL_TRIANGLES, 60, GL_UNSIGNED_INT, nullptr);
        glDrawArrays(GL_TRIANGLES, 0, 3000);
        glBindVertexArray(0);

        // check and call events and swap the buffers
        glfwPollEvents();
        glfwSwapBuffers(window);
    }

    // de-allocate all resources once they've outlived their purpose:
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &vertexVBO);
    glDeleteBuffers(1, &normalVBO);
    glDeleteProgram(shaderProgram);

    glfwTerminate();
    return 0;
}


void framebuffer_size_callback(GLFWwindow * window, int width, int height)
{
    glViewport(0, 0, width, height);
}


void processInput(GLFWwindow * window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
    {
        glfwSetWindowShouldClose(window, true);
    }
}


void subdivide(const glm::vec3 & v1, const glm::vec3 & v2, const glm::vec3 & v3, unsigned long depth)
{
    if (depth == 0)
    {
	    std::vector<float> n(3);
	    std::vector<float> vec1{v1[0]*rx, v1[1]*ry, v1[2]*rz};
	    std::vector<float> vec2{v2[0]*rx, v2[1]*ry, v2[2]*rz};
	    std::vector<float> vec3{v3[0]*rx, v3[1]*ry, v3[2]*rz};

	n = normal(vec1, vec2, vec3);
	
	normals[count] = n[0];		vertices[count++] = v1[0]*rx;
	normals[count] = n[1];		vertices[count++] = v1[1]*ry;
	normals[count] = n[2];		vertices[count++] = v1[2]*rz;
	normals[count] = n[0];		vertices[count++] = v2[0]*rx;
	normals[count] = n[1];		vertices[count++] = v2[1]*ry;
	normals[count] = n[2];		vertices[count++] = v2[2]*rz;
	normals[count] = n[0];		vertices[count++] = v3[0]*rx;
	normals[count] = n[1];		vertices[count++] = v3[1]*ry;
	normals[count] = n[2];		vertices[count++] = v3[2]*rz;
	// drawTriangle(v1, v2, v3);
	return;
    }

    glm::vec3 v12 = glm::normalize((v1 + v2) / 2.0f);
    glm::vec3 v23 = glm::normalize((v2 + v3) / 2.0f);
    glm::vec3 v31 = glm::normalize((v3 + v1) / 2.0f);

    subdivide(v1, v12, v31, depth - 1);
    subdivide(v2, v23, v12, depth - 1);
    subdivide(v3, v31, v23, depth - 1);
    subdivide(v12, v23, v31, depth - 1);
}



/**
 * Calculate the cross products of 2 vectors
 * v1 - vector 1
 * v2 - vector 2
 **/
std::vector<float> cross(float* v1, float* v2) {
	std::vector<float> c(3);

        c[0] = v1[1]*v2[2]-v1[2]*v2[1];
        c[1] = -1*(v1[0]*v2[2]-v1[2]*v2[0]);
        c[2] = v1[0]*v2[1]-v1[1]*v2[0];

        return c;
}

/**
 * Calculate the normal of the given 3D vectors
 * v1 - vector 1
 * v2 - vector 2
 * v3 - vector 3
 **/
std::vector<float> normal(std::vector<float> v1, std::vector<float> v2, std::vector<float> v3) {
        float dv1[] = {v2[0] - v1[0], v2[1] - v1[1], v2[2] - v1[2]};
        float dv2[] = {v3[0] - v2[0], v3[1] - v2[1], v3[2] - v2[2]};

        return cross(dv1, dv2);
}



int createObject(double r, double c, int rSeg, int cSeg) {

    const double PI = 3.1415926535897932384626433832795;
    const double TAU = 2 * PI;
    for (int i = 0; i < rSeg; i++) { // through stripes
        for (int j = 0; j < cSeg; j++) { // through squares on stripe
	for (int k = 0; k <= 1; k++ ){
	
		double s = (i + k) % rSeg + 0.5;
        	double t = j % (cSeg + 1);

        	double x = (c + r * cos(s * TAU / rSeg)) * cos(t * TAU / cSeg);
        	double y = (c + r * cos(s * TAU / rSeg)) * sin(t * TAU / cSeg);
        	double z = r * sin(s * TAU / rSeg);
	
    		normals[count] = 2*x; vertices[count++] = 2*x;
    		normals[count] = 2*y; vertices[count++] = 2*y;
    		normals[count] = 2*z; vertices[count++] = 2*z;
	
	}

	}
    }
    return count;
}
