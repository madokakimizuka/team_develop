class InformDeleteAgendaMailer < ApplicationMailer
  def inform_delete_agenda_mail(agenda)
    @agenda = agenda
    @agenda.team.users.each do |user|
      mail to: user.email, subject: "アジェンダ削除のお知らせ"
    end
  end
end
