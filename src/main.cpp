#include "raylib.h"

int main() {
    InitWindow(800, 600, "Raylib Window");


    SetTargetFPS(60);

    
    while (!WindowShouldClose()) {
       
        
        BeginDrawing();
        ClearBackground(RAYWHITE);

        
        DrawText("Hello, Raylib!", 350, 280, 20, DARKGRAY);

        
        EndDrawing();
    }

    // Close the window and unload resources
    CloseWindow();

    return 0;
}   