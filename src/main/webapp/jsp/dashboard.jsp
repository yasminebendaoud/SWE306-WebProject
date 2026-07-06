<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard</title>

<link rel="stylesheet" href="../css/admin.css">

</head>

<body>

<div class="admin-layout">

    <!-- ================= Sidebar ================= -->
    <jsp:include page="adminSideBar.jsp" />  
    <!-- ================= Main ================= -->

    <main class="main-content">

        <h1>Dashboard</h1>

        <!-- Statistics -->

        <section class="stats-container">

            <div class="stat-card">

                <h3>Today's Orders</h3>

                <p>15</p>

            </div>

            <div class="stat-card">

                <h3>Pending Orders</h3>

                <p>5</p>

            </div>

            <div class="stat-card">

                <h3>Completed</h3>

                <p>10</p>

            </div>

            <div class="stat-card">

                <h3>Revenue Today</h3>

                <p>RM1200</p>

            </div>

        </section>



        <!-- Recent Orders -->

        <section class="recent-orders">

            <div class="table-header">

                <h2>Recent Orders</h2>

                <a href="#" class="view-all">

                    View All

                </a>

            </div>


            <table>

                <thead>

                    <tr>

                        <th>Order ID</th>

                        <th>Customer</th>

                        <th>Status</th>

                        <th>Total</th>

                        <th>Action</th>

                    </tr>

                </thead>

                <tbody>

                    <tr>

                        <td>#15</td>

                        <td>Miya</td>

                        <td>

                            <span class="status pending">

                                Pending

                            </span>

                        </td>

                        <td>RM220</td>

                        <td>

                            <a href="#" class="action-btn">

                                View

                            </a>

                        </td>

                    </tr>


                    <tr>

                        <td>#16</td>

                        <td>Jake</td>

                        <td>

                            <span class="status preparing">

                                Preparing

                            </span>

                        </td>

                        <td>RM95</td>

                        <td>

                            <a href="#" class="action-btn">

                                View

                            </a>

                        </td>

                    </tr>


                    <tr>

                        <td>#17</td>

                        <td>Sarah</td>

                        <td>

                            <span class="status completed">

                                Completed

                            </span>

                        </td>

                        <td>RM310</td>

                        <td>

                            <a href="#" class="action-btn">

                                View

                            </a>

                        </td>

                    </tr>

                </tbody>

            </table>

        </section>

    </main>

</div>
<script type="module" src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.js"></script>

</body>

</html>