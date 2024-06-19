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

	router.Run(":3000")
}