<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Print Invoice</title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            font-size: 9pt;
            background-color: #fff;
            margin-left: -4px;
            margin-top: 15px; 
        }
        /*.content { 
            height: 100px;
            width: 500px;
            color: #111;
        }*/
        #products {
            width: 100%;
        }

        #products tr td {
            font-size: 8pt;
        }

        #printbox {
            width: 280px;
            margin: 5pt;
            padding: 5px;
            text-align: justify;
        }
        .inv_info tr td {
            padding-right: 10pt;
        }

        .products_td {
            margin-right: 0px;
        }

        .product_row {
            margin: 15pt;
        }

        .stamp {
            margin: 5pt;
            padding: 3pt;
            border: 3pt solid #111;
            text-align: center;
            font-size: 20pt;
        }

        .text-center {
            text-align: center;
        }
    </style>
</head>
<body>
    <?php $logoresult = $this->setting_model->getLogoImage(); ?>
    <div class="content" >
        <!-- <h3 id="logo"><br><img style="max-height:50px;" src="uploads/hospital_content/logo/<?php echo $logoresult["mini_logo"] ?>" alt='Logo'></h3> -->
        <h3 id="logo"><br><img style="max-height:50px;margin-left:20px" src="uploads/printing/2.jpg" alt='Logo'></h3>
        <div id='printbox'>
            <h2 style="margin-top:0" class="text-center"><?= $this->setting_model->getCurrentHospitalName() ?></h2>

            <table class="inv_info">
                <tr>
                    <td>Bill:</td>
                    <td>000000-000<?php echo $invoice_detail['id']?></td>
                </tr>
                <tr>
                    <td>Date:</td>
                    <td><?php echo $invoice_detail['appointment_date']?><br></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><?php echo $invoice_detail['patient_name']?></td>
                </tr>
                <tr>
                    <td>Opd No:</td>
                    <td><?php echo $invoice_detail['opd_no']?></td>
                </tr>                        
            </table><br><hr>
            <table id="products">
                <tr>
                    <td><b>Doctor:</b></td>
                    <td class="products_td"><?php echo $invoice_detail['name']?></td>
                    <td><b> TPA:</b></td>
                    <td class="products_td">N/A</td>
                </tr>
                <tr>
                    <td><b> Case:</b></td>
                    <td class="products_td"><?php echo $invoice_detail['case_type']?></td>
                    <td><b> Symptoms:</b></td>
                    <td class="products_td"><?php echo $invoice_detail['symptoms']?></td>
                </tr>
                <tr>
                    <td><b> Cusality:</b></td>
                    <td class="products_td"><?php echo $invoice_detail['casualty']?></td>
                    <td><b> Note:</b></td>
                    <td class="products_td"><?php echo $invoice_detail['note']?></td>
                </tr>         
            </table><br><hr>
            <table class="inv_info">
                <tr>
                    <td><b>Paid Amount (PKR) </b></td>
                    <td><b><?php echo $invoice_detail['apply_charge']?></b></td>
                </tr>            
            </table>
            <hr>
            <div class="text-center">Thank you</div>
        </div>
    </div>
</body>
</html>
