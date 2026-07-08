package model;

public class DashboardStats {

    private int todaysOrders;
    private int pendingOrders;
    private int completedOrders;
    private double revenueToday;

    public DashboardStats() {
    }

    public int getTodaysOrders() {
        return todaysOrders;
    }

    public void setTodaysOrders(int todaysOrders) {
        this.todaysOrders = todaysOrders;
    }

    public int getPendingOrders() {
        return pendingOrders;
    }

    public void setPendingOrders(int pendingOrders) {
        this.pendingOrders = pendingOrders;
    }

    public int getCompletedOrders() {
        return completedOrders;
    }

    public void setCompletedOrders(int completedOrders) {
        this.completedOrders = completedOrders;
    }

    public double getRevenueToday() {
        return revenueToday;
    }

    public void setRevenueToday(double revenueToday) {
        this.revenueToday = revenueToday;
    }
}