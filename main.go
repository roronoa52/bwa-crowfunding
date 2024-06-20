package main

import (
	"crowfunding/db"
	"crowfunding/handler"
	"crowfunding/user"

	"github.com/gin-gonic/gin"
)

func main() {

	db := db.DBConnection()

	userRepository := user.NewRepository(db)

	userService := user.NewService(userRepository)

	userHandler := handler.NewUserHandler(userService)

	router := gin.Default()

	api := router.Group("/api/v1")
	
	api.POST("/users", userHandler.RegisterUser)
	api.POST("/sessions", userHandler.Login)
	api.POST("/email_checkers", userHandler.CheckEmailAvailability)
	api.POST("/avatars", userHandler.UploadAvatar)

	router.Run(":3000")
}