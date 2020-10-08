<div class="row">
    <h1 class="page-header">
        Order Reports
    </h1>

    <h3 class="bg-success"><?php display_message(); ?></h3>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>ID</th>
                <th>Product ID</th>
                <th>Order ID</th>
                <th>Price</th>
                <th>Product Title</th>
                <th>Product Quantity</th>
            </tr>
        </thead>
        <tbody>
            <?php get_reports(); ?>

        </tbody>
    </table>
</div>
