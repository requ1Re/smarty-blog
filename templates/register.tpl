{include file="include/header.tpl" title="Registrierung" admin=$data.user.admin}
{include file="include/notifications.tpl" notifications=$data.notifications}

<div class="container">
    <div class="row justify-content-md-center">
        <div class="col-lg-6">

            <div class="card my-4 shadow">
                <h5 class="card-header text-center">Registrierung</h5>
                <div class="card-body">
                    <div class="alert alert-info" style="margin-top: 25px;"><i class="fas fa-info"></i> Diese Daten werden streng vertraulich behandelt und niemals mit Dritten geteilt.</div>
                    <form method="post" action="">
                        <input type="hidden" name="register" value="true">
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <input type="text" class="form-control" name="firstname" placeholder="{$data.ui.TEXT_UI_FIRSTNAME}" required>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" name="lastname" placeholder="{$data.ui.TEXT_UI_LASTNAME}" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="username" placeholder="{$data.ui.TEXT_UI_USERNAME}" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" placeholder="{$data.ui.TEXT_UI_EMAIL}" required>
                        </div>
                        <div class="form-group">
                             <input type="password" class="form-control" name="password" placeholder="{$data.ui.TEXT_UI_PASSWORD}" minlength="8" required>
                        </div>
                        <div class="form-group">
                             <input type="password" class="form-control" name="password2" placeholder="{$data.ui.TEXT_UI_PASSWORD2}" minlength="8" required>
                        </div>
                        <span class="input-group-btn"><button class="btn btn-secondary" type="submit">OK</button></span>
                    </form>
                    <a href="?p=login">{$data.ui.TEXT_UI_LOGINNOTICE}</a>
                </div>
            </div>
        </div>
    </div>
</div>


{include file="include/footer.tpl"}