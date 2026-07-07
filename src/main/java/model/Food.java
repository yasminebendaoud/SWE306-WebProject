package model;

public class Food {

    private int menuId;
    private String foodName;
    private String description;
    private String ingredients;
    private String nutritionInfo;
    private double price;
    private String image;
    private double rating;
    private int categoryId;

    public Food() {
    }

    public Food(int menuId, String foodName, String description,
                String ingredients, String nutritionInfo,
                double price, String image,
                double rating, int categoryId) {

        this.menuId = menuId;
        this.foodName = foodName;
        this.description = description;
        this.ingredients = ingredients;
        this.nutritionInfo = nutritionInfo;
        this.price = price;
        this.image = image;
        this.rating = rating;
        this.categoryId = categoryId;
    }

    public int getMenuId() {
        return menuId;
    }

    public void setMenuId(int menuId) {
        this.menuId = menuId;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getNutritionInfo() {
        return nutritionInfo;
    }

    public void setNutritionInfo(String nutritionInfo) {
        this.nutritionInfo = nutritionInfo;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
}