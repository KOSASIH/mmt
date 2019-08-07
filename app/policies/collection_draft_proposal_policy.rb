class CollectionDraftProposalPolicy < ApplicationPolicy

  attr_reader :user_context

  def initialize(user_context, object)
    @user_context = user_context
  end

  def publish?
    false
  end

  def show?
    check?
  end

  def new?
    check?
  end

  def edit?
    check?
  end

  def create?
    check?
  end

  def update?
    check?
  end

  def destroy?
    check?
  end

  def check?
    proposal_mode? && !@user_context.user['urs_uid'].blank?
  end

  def proposal_mode?
    Rails.configuration.proposal_mode
  end
end