.class public Lcom/njpwworld/NJPWWORLD/view/a/a;
.super Landroid/support/v4/app/DialogFragment;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/a/a;->b:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/njpwworld/NJPWWORLD/view/a/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/njpwworld/NJPWWORLD/view/a/a;->b:Landroid/app/DatePickerDialog$OnDateSetListener;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object p1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    return-void
.end method
