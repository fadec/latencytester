# coding: utf-8
Rails.application.routes.draw do
  get ':time', to: 'page#index'
  root to: 'page#index'
end
